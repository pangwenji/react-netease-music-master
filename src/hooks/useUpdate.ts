import { useReducer } from 'react'

const updateReducer = (num: number): number => (num + 1) % 1000000

const useUpdate = (): (() => void) => {
  const [, update] = useReducer(updateReducer, 0)
  return update
}

export default useUpdate
